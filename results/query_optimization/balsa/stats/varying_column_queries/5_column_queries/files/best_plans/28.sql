/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=13526 AND p.AnswerCount>=0 AND u.UpVotes>=0 AND u.UpVotes<=652 AND u.CreationDate<='2014-08-25 06:02:11'::timestamp;

