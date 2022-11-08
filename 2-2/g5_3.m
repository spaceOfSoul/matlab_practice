function main
hfig= figure; % figure 를 하나 생성한다.
set( hfig, 'color',[ 0 0 1] ) ; % 그림창 배경색을 파란색으로 변경
hb= ; % ‘OK’라는 글씨가 쓰여진 푸쉬 버튼을 하나 생성한다.
set( hfig, 'callback', {@mycallbackfcn, hfig} ); % 푸쉬버튼 누르면 수행될 콜백함수를 지정한다.
% 콜백 함수를 지정할 때, 속성값을 {@함수이름, 추가변수} 로 하면,
% 콜백 함수에 디폴트 인자 2개 외에 추가로 3번째 인자로 변수 hfig 값이 전달된다.
% hfig를 전달하는 이유는? 콜백 함수 안에서 그림창 색 변경할 때, 그림창의 핸들이 필요.
end
function mycallbackfcn(source,eventdata, hfig)
c=rand(1,3) ; 
set( hfig, 'color', c); 
f_pos=get( hfig, 'position') ;
pos = get( source, 'position') ;
pos = 
pos=[0 0 100 30];
end
set( , , ) ; % 버튼의 ‘position’ 속성값을 변수 pos 값으로 변경end