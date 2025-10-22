/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<80 AND p.CommentCount>1 AND p.CommentCount<16 AND u.DownVotes>397 AND u.DownVotes<1183 AND v.CreationDate>'2012-06-13 13:10:41'::timestamp AND v.CreationDate<'2013-03-06 14:09:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-04-02 13:43:18'::timestamp AND b.Date<'2012-12-19 18:28:21'::timestamp;

