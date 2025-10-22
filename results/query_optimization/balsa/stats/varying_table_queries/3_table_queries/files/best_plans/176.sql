/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=13 AND p.ViewCount<=25962 AND p.CreationDate>='2010-07-27 17:15:37'::timestamp AND p.CreationDate<='2014-08-21 21:56:13'::timestamp AND u.Views>=0 AND u.Views<=168 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-26 19:28:33'::timestamp AND u.CreationDate<='2014-09-12 02:20:03'::timestamp;

