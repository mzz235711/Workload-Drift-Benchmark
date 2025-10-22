/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<69 AND p.CommentCount>11 AND p.CommentCount<16 AND u.DownVotes>144 AND u.DownVotes<690 AND v.CreationDate>'2011-07-08 08:32:09'::timestamp AND v.CreationDate<'2012-07-17 05:08:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2013-07-08 00:58:50'::timestamp AND b.Date<'2014-04-14 20:37:31'::timestamp;

