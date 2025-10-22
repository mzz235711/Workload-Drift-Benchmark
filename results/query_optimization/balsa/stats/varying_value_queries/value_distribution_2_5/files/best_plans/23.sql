/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<162 AND p.CommentCount>5 AND p.CommentCount<37 AND u.DownVotes>49 AND u.DownVotes<1339 AND v.CreationDate>'2010-01-30 02:50:21'::timestamp AND v.CreationDate<'2011-12-20 01:28:58'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2013-06-04 22:30:25'::timestamp AND b.Date<'2013-09-13 02:52:54'::timestamp;

