/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<58 AND p.CommentCount>3 AND p.CommentCount<17 AND u.DownVotes>747 AND u.DownVotes<1685 AND v.CreationDate>'2011-01-02 15:51:56'::timestamp AND v.CreationDate<'2012-07-30 08:39:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-03-21 11:06:46'::timestamp AND b.Date<'2012-05-19 12:49:19'::timestamp;

