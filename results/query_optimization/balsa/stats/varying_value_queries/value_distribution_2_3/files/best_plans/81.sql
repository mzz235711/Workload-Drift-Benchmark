/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<112 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>700 AND u.DownVotes<1648 AND v.CreationDate>'2010-03-05 16:33:11'::timestamp AND v.CreationDate<'2013-11-28 19:05:55'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-07-23 07:11:00'::timestamp AND b.Date<'2012-04-23 19:27:51'::timestamp;

