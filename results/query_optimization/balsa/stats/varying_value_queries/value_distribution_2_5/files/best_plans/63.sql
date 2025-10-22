/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>71 AND p.Score<149 AND p.CommentCount>4 AND p.CommentCount<19 AND u.DownVotes>59 AND u.DownVotes<1598 AND v.CreationDate>'2011-04-30 17:41:03'::timestamp AND v.CreationDate<'2011-10-02 22:25:25'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-08-01 13:38:00'::timestamp AND b.Date<'2014-06-14 17:52:58'::timestamp;

