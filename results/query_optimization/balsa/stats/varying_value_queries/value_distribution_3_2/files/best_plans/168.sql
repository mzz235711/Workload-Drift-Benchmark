/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>56 AND p.Score<153 AND p.CommentCount>8 AND p.CommentCount<13 AND u.DownVotes>88 AND u.DownVotes<1454 AND v.CreationDate>'2009-11-15 01:38:57'::timestamp AND v.CreationDate<'2014-02-07 13:32:48'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-10-14 15:51:36'::timestamp AND b.Date<'2011-07-05 10:38:52'::timestamp;

