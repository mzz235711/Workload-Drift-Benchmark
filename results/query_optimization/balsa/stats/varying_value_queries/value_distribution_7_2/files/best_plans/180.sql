/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<176 AND p.CommentCount>21 AND p.CommentCount<31 AND u.DownVotes>21 AND u.DownVotes<915 AND v.CreationDate>'2011-08-18 05:34:30'::timestamp AND v.CreationDate<'2014-05-16 00:03:53'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-07-15 21:19:44'::timestamp AND b.Date<'2013-09-06 18:52:14'::timestamp;

