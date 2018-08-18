'use strict'
// key : タスクの文字列 / value : 完了しているかどうか
const tasks = new Map();

/**
 * TODOを追加する
 * @param {string} task 
 */
function todo(task){
    tasks.set(task, false);
}

/**
 * タスクと官僚したかどうかが含まれる配列を受け取り、完了したかを返す
 * @param {array} taskAndIsDonePair 
 * @return {boolean} 完了したかどうか
 */
function isDone(taskAndIsDonePair) {
    return taskAndIsDonePair[1];
}

/**
 * タスクと官僚したかどうかが含まれる配列を受け取り、完了していないかを返す
 * @param {array} taskAndIsDonePair 
 * @return {boolean} 完了していないかどうか
 */
function isNotDone(taskAndIsDonePair) {
    return !isDone(taskAndIsDonePair);
}

/**
 * TODOの一覧の配列を取得する
 * @return {array}
 */
function list() {
    return Array.from(tasks)
        .filter(isNotDone)
        .map(t => t[0]);
}

module.exports = {
    todo: todo,
    list: list
}
