/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>60 AND p.Score<121 AND p.CommentCount>2 AND p.CommentCount<42 AND u.DownVotes>665 AND u.DownVotes<844 AND v.CreationDate>'2014-07-26 23:12:33'::timestamp AND v.CreationDate<'2014-07-28 02:06:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2012-11-23 01:42:33'::timestamp AND b.Date<'2013-01-14 20:02:51'::timestamp;

