/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<94 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>487 AND u.DownVotes<1291 AND v.CreationDate>'2010-10-05 13:07:45'::timestamp AND v.CreationDate<'2012-12-18 05:11:10'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2011-04-29 06:24:22'::timestamp AND b.Date<'2013-04-05 00:32:12'::timestamp;

