//삭제 번튼의 click 이벤트 핸들러
document.querySelector('.delete').onclick  = function() {
    if(!confirm('정말 삭제하시겠습니까??')) return;
    document.getElementById('deleteForm').submit();
    //form에 id="deleteForm"를 해놨기에       ↑ 할 수 있음.
}