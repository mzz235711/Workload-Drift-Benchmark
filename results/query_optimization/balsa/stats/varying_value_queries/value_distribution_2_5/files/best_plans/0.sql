/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<30 AND p.CommentCount>5 AND p.CommentCount<18 AND u.DownVotes>9 AND u.DownVotes<575 AND v.CreationDate>'2011-06-06 00:53:34'::timestamp AND v.CreationDate<'2012-05-30 09:52:12'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-01-18 07:21:34'::timestamp AND b.Date<'2012-09-22 11:50:45'::timestamp;

