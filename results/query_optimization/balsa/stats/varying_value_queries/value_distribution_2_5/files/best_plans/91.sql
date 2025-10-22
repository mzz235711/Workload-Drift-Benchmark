/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<30 AND p.CommentCount>4 AND p.CommentCount<37 AND u.DownVotes>278 AND u.DownVotes<1096 AND v.CreationDate>'2010-09-21 13:48:35'::timestamp AND v.CreationDate<'2013-12-07 11:58:32'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-05-10 06:11:10'::timestamp AND b.Date<'2012-07-15 04:00:21'::timestamp;

