/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<147 AND p.CommentCount>6 AND p.CommentCount<20 AND u.DownVotes>328 AND u.DownVotes<907 AND v.CreationDate>'2010-08-01 02:25:35'::timestamp AND v.CreationDate<'2014-01-13 18:31:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-07-02 22:05:39'::timestamp AND b.Date<'2012-08-29 09:59:51'::timestamp;

