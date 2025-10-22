/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<35 AND p.CommentCount>18 AND p.CommentCount<30 AND u.DownVotes>544 AND u.DownVotes<962 AND v.CreationDate>'2011-02-15 03:56:34'::timestamp AND v.CreationDate<'2013-02-24 22:22:54'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-08-29 19:38:16'::timestamp AND b.Date<'2011-08-23 11:07:48'::timestamp;

