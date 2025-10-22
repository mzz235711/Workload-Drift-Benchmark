/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<41 AND p.CommentCount>1 AND p.CommentCount<39 AND u.DownVotes>561 AND u.DownVotes<1366 AND v.CreationDate>'2010-09-14 15:15:06'::timestamp AND v.CreationDate<'2012-06-25 19:47:47'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-01-04 16:05:07'::timestamp AND b.Date<'2014-02-13 20:36:13'::timestamp;

