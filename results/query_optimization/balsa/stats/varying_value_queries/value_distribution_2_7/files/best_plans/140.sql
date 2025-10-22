/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>77 AND p.Score<131 AND p.CommentCount>6 AND p.CommentCount<19 AND u.DownVotes>278 AND u.DownVotes<1327 AND v.CreationDate>'2009-05-04 11:47:48'::timestamp AND v.CreationDate<'2014-08-15 12:06:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-11-29 06:58:30'::timestamp AND b.Date<'2013-12-09 02:50:46'::timestamp;

