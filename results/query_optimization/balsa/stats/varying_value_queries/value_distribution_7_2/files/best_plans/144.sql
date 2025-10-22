/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<159 AND p.CommentCount>1 AND p.CommentCount<8 AND u.DownVotes>347 AND u.DownVotes<561 AND v.CreationDate>'2010-09-07 08:53:21'::timestamp AND v.CreationDate<'2012-12-09 17:28:02'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-01-08 09:09:12'::timestamp AND b.Date<'2014-02-25 21:30:08'::timestamp;

