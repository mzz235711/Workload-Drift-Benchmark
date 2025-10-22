/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<67 AND p.CommentCount>1 AND p.CommentCount<35 AND u.DownVotes>469 AND u.DownVotes<1138 AND v.CreationDate>'2009-04-14 12:50:21'::timestamp AND v.CreationDate<'2012-01-18 21:17:06'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2012-01-19 04:48:39'::timestamp AND b.Date<'2012-07-09 01:52:57'::timestamp;

