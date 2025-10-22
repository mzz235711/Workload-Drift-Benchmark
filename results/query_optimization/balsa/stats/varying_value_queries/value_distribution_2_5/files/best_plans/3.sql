/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<72 AND p.CommentCount>11 AND p.CommentCount<40 AND u.DownVotes>129 AND u.DownVotes<1917 AND v.CreationDate>'2011-12-14 16:09:02'::timestamp AND v.CreationDate<'2014-05-08 05:25:41'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-04-23 11:42:38'::timestamp AND b.Date<'2012-03-09 06:34:14'::timestamp;

