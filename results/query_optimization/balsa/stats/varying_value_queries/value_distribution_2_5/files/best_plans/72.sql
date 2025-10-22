/*+ MergeJoin(v b u p)
 MergeJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>86 AND p.Score<149 AND p.CommentCount>3 AND p.CommentCount<30 AND u.DownVotes>507 AND u.DownVotes<1159 AND v.CreationDate>'2011-05-30 22:41:15'::timestamp AND v.CreationDate<'2012-09-17 03:51:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-09-24 04:02:57'::timestamp AND b.Date<'2014-08-01 10:45:32'::timestamp;

