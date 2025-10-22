/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<168 AND p.CommentCount>0 AND p.CommentCount<10 AND u.DownVotes>762 AND u.DownVotes<815 AND v.CreationDate>'2011-05-02 12:09:02'::timestamp AND v.CreationDate<'2014-09-07 17:39:13'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2010-09-23 10:23:23'::timestamp AND b.Date<'2013-01-20 03:50:51'::timestamp;

