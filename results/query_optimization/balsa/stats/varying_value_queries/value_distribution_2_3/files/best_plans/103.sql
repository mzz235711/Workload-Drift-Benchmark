/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>63 AND p.Score<181 AND p.CommentCount>8 AND p.CommentCount<36 AND u.DownVotes>95 AND u.DownVotes<1545 AND v.CreationDate>'2011-04-09 03:43:59'::timestamp AND v.CreationDate<'2014-04-15 07:01:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-10-02 05:02:36'::timestamp AND b.Date<'2012-04-17 12:30:06'::timestamp;

