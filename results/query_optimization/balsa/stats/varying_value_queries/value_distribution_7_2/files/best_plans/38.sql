/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<54 AND p.CommentCount>6 AND p.CommentCount<21 AND u.DownVotes>55 AND u.DownVotes<1434 AND v.CreationDate>'2009-09-20 10:46:54'::timestamp AND v.CreationDate<'2010-11-11 10:53:26'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-12-22 12:15:53'::timestamp AND b.Date<'2013-10-26 08:09:58'::timestamp;

