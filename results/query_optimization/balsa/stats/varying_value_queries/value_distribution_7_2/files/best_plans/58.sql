/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<184 AND p.CommentCount>11 AND p.CommentCount<30 AND u.DownVotes>229 AND u.DownVotes<643 AND v.CreationDate>'2009-12-23 05:54:02'::timestamp AND v.CreationDate<'2013-08-31 22:01:54'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-11-04 04:30:48'::timestamp AND b.Date<'2012-10-08 17:58:03'::timestamp;

