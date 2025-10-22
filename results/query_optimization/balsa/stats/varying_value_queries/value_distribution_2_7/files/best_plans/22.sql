/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<15 AND p.CommentCount>1 AND p.CommentCount<33 AND u.DownVotes>728 AND u.DownVotes<1467 AND v.CreationDate>'2010-10-02 22:08:03'::timestamp AND v.CreationDate<'2012-05-24 05:19:56'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2010-08-06 02:14:59'::timestamp AND b.Date<'2011-11-30 08:29:40'::timestamp;

