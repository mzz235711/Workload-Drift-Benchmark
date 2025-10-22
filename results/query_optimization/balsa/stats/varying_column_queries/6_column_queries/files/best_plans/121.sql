/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score<=56 AND p.CreationDate>='2010-07-27 15:14:22'::timestamp AND p.CreationDate<='2014-09-02 14:05:21'::timestamp AND u.Views<=1604 AND u.UpVotes=3;

