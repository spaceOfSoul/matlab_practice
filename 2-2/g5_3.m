function main
hfig= figure; % figure �� �ϳ� �����Ѵ�.
set( hfig, 'color',[ 0 0 1] ) ; % �׸�â ������ �Ķ������� ����
hb= ; % ��OK����� �۾��� ������ Ǫ�� ��ư�� �ϳ� �����Ѵ�.
set( hfig, 'callback', {@mycallbackfcn, hfig} ); % Ǫ����ư ������ ����� �ݹ��Լ��� �����Ѵ�.
% �ݹ� �Լ��� ������ ��, �Ӽ����� {@�Լ��̸�, �߰�����} �� �ϸ�,
% �ݹ� �Լ��� ����Ʈ ���� 2�� �ܿ� �߰��� 3��° ���ڷ� ���� hfig ���� ���޵ȴ�.
% hfig�� �����ϴ� ������? �ݹ� �Լ� �ȿ��� �׸�â �� ������ ��, �׸�â�� �ڵ��� �ʿ�.
end
function mycallbackfcn(source,eventdata, hfig)
c=rand(1,3) ; 
set( hfig, 'color', c); 
f_pos=get( hfig, 'position') ;
pos = get( source, 'position') ;
pos = 
pos=[0 0 100 30];
end
set( , , ) ; % ��ư�� ��position�� �Ӽ����� ���� pos ������ ����end