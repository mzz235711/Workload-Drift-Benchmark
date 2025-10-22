/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<96 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>206 AND u.DownVotes<642 AND v.CreationDate>'2010-01-10 23:31:53'::timestamp AND v.CreationDate<'2011-01-16 21:53:32'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2012-03-12 22:00:50'::timestamp AND b.Date<'2012-09-06 00:51:07'::timestamp;

