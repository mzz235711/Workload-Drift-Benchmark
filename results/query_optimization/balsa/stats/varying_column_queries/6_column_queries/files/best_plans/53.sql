/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=-1 AND p.Score<=24 AND p.ViewCount<=19571 AND p.AnswerCount<=6 AND p.CreationDate<='2014-09-10 21:36:09'::timestamp AND u.DownVotes<=0;

