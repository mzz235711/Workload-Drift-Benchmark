/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<90 AND p.CommentCount>6 AND p.CommentCount<40 AND u.DownVotes>322 AND u.DownVotes<1659 AND v.CreationDate>'2012-05-12 05:18:04'::timestamp AND v.CreationDate<'2012-11-11 10:33:27'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2011-01-04 11:27:04'::timestamp AND b.Date<'2014-08-21 15:19:05'::timestamp;

