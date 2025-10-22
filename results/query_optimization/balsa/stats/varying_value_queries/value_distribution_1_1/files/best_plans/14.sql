/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<189 AND p.CommentCount>11 AND p.CommentCount<30 AND u.DownVotes>83 AND u.DownVotes<1303 AND v.CreationDate>'2010-10-20 22:56:19'::timestamp AND v.CreationDate<'2013-07-04 00:09:44'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2011-12-19 04:26:59'::timestamp AND b.Date<'2014-08-27 08:17:06'::timestamp;

