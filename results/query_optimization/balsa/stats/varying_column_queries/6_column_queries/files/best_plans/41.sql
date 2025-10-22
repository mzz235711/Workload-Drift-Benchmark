/*+ HashJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=14 AND p.CreationDate='2011-05-11 10:03:37'::timestamp AND u.Views<=55 AND u.UpVotes<=83 AND u.CreationDate<='2014-09-12 07:04:11'::timestamp;

