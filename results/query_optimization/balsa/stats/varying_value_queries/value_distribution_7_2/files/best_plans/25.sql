/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<175 AND p.CommentCount>8 AND p.CommentCount<33 AND u.DownVotes>23 AND u.DownVotes<480 AND v.CreationDate>'2012-01-21 13:19:46'::timestamp AND v.CreationDate<'2012-10-10 04:16:14'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-12-12 08:52:05'::timestamp AND b.Date<'2013-02-11 10:40:08'::timestamp;

