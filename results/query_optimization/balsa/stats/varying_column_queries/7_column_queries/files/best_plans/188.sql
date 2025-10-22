/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount>=0 AND p.AnswerCount<=2 AND u.Reputation<=181 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=229 AND u.CreationDate<='2014-08-28 05:09:15'::timestamp;

