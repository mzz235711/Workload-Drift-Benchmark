/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<188 AND p.CommentCount>5 AND p.CommentCount<16 AND u.DownVotes>178 AND u.DownVotes<1611 AND v.CreationDate>'2009-07-19 05:56:29'::timestamp AND v.CreationDate<'2011-06-20 12:57:56'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-06-09 13:50:49'::timestamp AND b.Date<'2013-01-23 02:31:19'::timestamp;

