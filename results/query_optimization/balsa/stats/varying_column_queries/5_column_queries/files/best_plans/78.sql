/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.CreationDate>='2010-09-12 11:22:28'::timestamp AND u.Views<=48 AND u.UpVotes>=0 AND u.UpVotes<=25;

