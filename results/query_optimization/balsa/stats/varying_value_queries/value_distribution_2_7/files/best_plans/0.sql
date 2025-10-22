/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<62 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>368 AND u.DownVotes<1589 AND v.CreationDate>'2012-03-05 05:27:02'::timestamp AND v.CreationDate<'2013-03-08 04:49:36'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2011-09-18 19:32:36'::timestamp AND b.Date<'2014-04-19 18:35:24'::timestamp;

