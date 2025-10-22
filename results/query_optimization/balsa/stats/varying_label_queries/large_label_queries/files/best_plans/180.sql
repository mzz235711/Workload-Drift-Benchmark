/*+ HashJoin(c p b u ph)
 HashJoin(c p b u)
 MergeJoin(p b u)
 HashJoin(b u)
 IndexScan(c)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c (p (b u))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.ViewCount<=7547 AND p.AnswerCount>=0 AND p.CommentCount<=11 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-03-02 19:00:15'::timestamp AND u.Reputation<=8164 AND u.Views>=0 AND u.Views<=83 AND u.DownVotes<=0 AND u.CreationDate<='2014-07-24 13:51:53'::timestamp;

