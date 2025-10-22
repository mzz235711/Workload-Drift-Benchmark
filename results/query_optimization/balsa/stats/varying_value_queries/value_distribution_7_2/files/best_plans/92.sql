/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<25 AND p.CommentCount>4 AND p.CommentCount<41 AND u.DownVotes>326 AND u.DownVotes<1790 AND v.CreationDate>'2011-06-30 01:16:33'::timestamp AND v.CreationDate<'2011-11-18 06:29:54'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-08-04 03:04:45'::timestamp AND b.Date<'2013-12-23 19:54:51'::timestamp;

