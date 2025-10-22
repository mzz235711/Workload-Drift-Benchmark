/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<122 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>348 AND u.DownVotes<1630 AND v.CreationDate>'2009-08-13 12:57:24'::timestamp AND v.CreationDate<'2011-12-25 02:25:58'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-06-13 17:32:04'::timestamp AND b.Date<'2013-10-31 16:01:03'::timestamp;

