/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>82 AND p.Score<132 AND p.CommentCount>9 AND p.CommentCount<36 AND u.DownVotes>505 AND u.DownVotes<1361 AND v.CreationDate>'2011-04-10 08:10:21'::timestamp AND v.CreationDate<'2014-05-23 11:24:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-11-02 12:16:53'::timestamp AND b.Date<'2013-12-25 17:52:59'::timestamp;

