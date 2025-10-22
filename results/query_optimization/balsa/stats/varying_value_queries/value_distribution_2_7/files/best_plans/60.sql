/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<24 AND p.CommentCount>0 AND p.CommentCount<27 AND u.DownVotes>674 AND u.DownVotes<1018 AND v.CreationDate>'2009-02-18 06:18:10'::timestamp AND v.CreationDate<'2012-03-02 04:29:27'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2013-01-05 22:21:23'::timestamp AND b.Date<'2013-08-06 04:57:40'::timestamp;

