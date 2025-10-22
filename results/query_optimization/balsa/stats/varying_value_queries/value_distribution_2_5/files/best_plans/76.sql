/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<159 AND p.CommentCount>0 AND p.CommentCount<31 AND u.DownVotes>201 AND u.DownVotes<1304 AND v.CreationDate>'2011-03-31 23:48:32'::timestamp AND v.CreationDate<'2011-07-03 09:51:53'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-01-14 23:28:49'::timestamp AND b.Date<'2013-03-23 22:30:06'::timestamp;

