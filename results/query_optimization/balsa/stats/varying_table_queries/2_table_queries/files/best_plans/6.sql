/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.AnswerCount>=0 AND u.Views>=0 AND u.Views<=73 AND u.UpVotes<=81;

