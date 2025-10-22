/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<18 AND p.CommentCount>6 AND p.CommentCount<39 AND u.DownVotes>135 AND u.DownVotes<927 AND v.CreationDate>'2011-09-07 11:47:42'::timestamp AND v.CreationDate<'2014-05-22 04:23:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2012-09-07 10:32:50'::timestamp AND b.Date<'2014-09-08 21:24:00'::timestamp;

