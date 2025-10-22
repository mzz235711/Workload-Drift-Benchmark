/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<121 AND p.CommentCount>0 AND p.CommentCount<4 AND u.DownVotes>43 AND u.DownVotes<464 AND v.CreationDate>'2011-01-02 23:09:56'::timestamp AND v.CreationDate<'2014-05-10 04:48:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-10-17 16:25:35'::timestamp AND b.Date<'2013-11-04 07:43:53'::timestamp;

