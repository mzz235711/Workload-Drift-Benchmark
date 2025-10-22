/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<161 AND p.CommentCount>2 AND p.CommentCount<43 AND u.DownVotes>167 AND u.DownVotes<1476 AND v.CreationDate>'2010-08-22 17:59:55'::timestamp AND v.CreationDate<'2012-01-05 11:42:31'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-04-04 11:50:55'::timestamp AND b.Date<'2014-09-12 10:21:07'::timestamp;

