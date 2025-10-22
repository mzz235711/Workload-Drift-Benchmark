/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score<=72 AND p.ViewCount>=0 AND p.AnswerCount<=6 AND u.UpVotes<=19;

