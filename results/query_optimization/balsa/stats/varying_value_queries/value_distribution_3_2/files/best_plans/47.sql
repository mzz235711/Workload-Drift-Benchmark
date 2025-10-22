/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<76 AND p.CommentCount>0 AND p.CommentCount<27 AND u.DownVotes>590 AND u.DownVotes<1397 AND v.CreationDate>'2013-06-02 01:53:28'::timestamp AND v.CreationDate<'2014-04-21 15:47:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-04-17 10:23:41'::timestamp AND b.Date<'2014-03-30 09:50:31'::timestamp;

