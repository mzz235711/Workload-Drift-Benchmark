/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.AnswerCount<=6 AND p.CreationDate='2013-05-29 05:41:40'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

