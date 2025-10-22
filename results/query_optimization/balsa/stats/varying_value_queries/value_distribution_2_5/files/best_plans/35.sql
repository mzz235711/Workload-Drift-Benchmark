/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<119 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>507 AND u.DownVotes<1914 AND v.CreationDate>'2012-08-02 05:01:09'::timestamp AND v.CreationDate<'2013-10-04 19:38:30'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-06-10 04:30:57'::timestamp AND b.Date<'2013-04-13 08:37:17'::timestamp;

