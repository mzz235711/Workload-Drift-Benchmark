/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<167 AND p.CommentCount>9 AND p.CommentCount<29 AND u.DownVotes>207 AND u.DownVotes<942 AND v.CreationDate>'2009-03-07 04:26:06'::timestamp AND v.CreationDate<'2012-05-28 06:58:57'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-11-15 08:25:39'::timestamp AND b.Date<'2013-05-28 07:01:08'::timestamp;

