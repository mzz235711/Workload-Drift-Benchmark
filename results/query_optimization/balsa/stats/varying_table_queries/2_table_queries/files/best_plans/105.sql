/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=3555 AND p.AnswerCount<=6 AND p.CreationDate<='2014-09-05 23:29:09'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=46;

