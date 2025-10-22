/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<181 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>148 AND u.DownVotes<578 AND v.CreationDate>'2009-09-26 19:26:29'::timestamp AND v.CreationDate<'2013-12-24 23:20:39'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2012-12-04 10:56:30'::timestamp AND b.Date<'2014-01-07 05:03:47'::timestamp;

