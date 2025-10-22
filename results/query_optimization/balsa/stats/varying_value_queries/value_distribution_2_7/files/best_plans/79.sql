/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<7 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>293 AND u.DownVotes<1064 AND v.CreationDate>'2009-11-05 22:53:27'::timestamp AND v.CreationDate<'2014-04-26 15:52:30'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2014-04-06 09:51:23'::timestamp AND b.Date<'2014-05-20 18:43:06'::timestamp;

