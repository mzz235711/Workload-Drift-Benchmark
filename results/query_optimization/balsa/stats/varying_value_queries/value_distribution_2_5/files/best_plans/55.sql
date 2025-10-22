/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<172 AND p.CommentCount>2 AND p.CommentCount<23 AND u.DownVotes>96 AND u.DownVotes<331 AND v.CreationDate>'2011-06-10 16:36:30'::timestamp AND v.CreationDate<'2011-11-26 18:13:25'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2011-12-23 15:38:25'::timestamp AND b.Date<'2012-12-03 01:07:26'::timestamp;

